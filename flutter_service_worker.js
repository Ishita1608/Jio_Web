'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "61cc1eeff02b4e1c5e8b0616ee09bb53",
"assets/assets/5g.jpg": "ae286034a14a619b9ae7bacae06e4548",
"assets/assets/Competition.jpg": "54adb940c4c2bdfb0ca88710b00a6b32",
"assets/assets/fonts/DancingScript-VariableFont_wght.ttf": "d3bebba97d549436fd6137d05d55ae33",
"assets/assets/Footprint.jpg": "14961e937e674857aff479fc9dc1fe86",
"assets/assets/France.jpg": "eaefd4b2c35371714d8161d89878ddb4",
"assets/assets/Guesswork.jpg": "f2fd7bc57d3ec539195e2248b77c3578",
"assets/assets/h1.jpg": "2fa86bc1492cced0a5c24c369466605e",
"assets/assets/h2.jpg": "33dc35e990198ea1344c1c70470cc221",
"assets/assets/h3.jpg": "698821cf8886c54f856c123621cd9b9d",
"assets/assets/h4.jpg": "11bd8b4481991ec7f9b800be9b7b252a",
"assets/assets/h5.jpeg": "95d4b3df20a5f53a52ad74dea7ab8900",
"assets/assets/h6.jpg": "4deab7e407dd3890f94abb395755a4c4",
"assets/assets/HPE.jpg": "18b3b7e0c5fb1b335d914eacc2d3d5e3",
"assets/assets/Intel.jpg": "8908f274a1a2665da93be1943a53586d",
"assets/assets/MA.jpg": "783cadcae188714f803c60e645f6d77d",
"assets/assets/Slack.jpg": "1f48235c2fd07e614025cf25bab0fa6c",
"assets/assets/Smartphone.jpg": "f4e4c556d081bf73b3abb12887bfd917",
"assets/assets/Twitter1.png": "eb57b4b5c210decccc8b92d2ec2733aa",
"assets/assets/Unsure.jpg": "e7012af3fdd45b5c7180f3a6d8aaa74a",
"assets/assets/Vodafone.jpg": "867c664fac58ab3035271d777faf54f3",
"assets/assets/Wink-.jpg": "290360c01553662ac55a6ba1e3c95d59",
"assets/assets/yehh.jpg": "aae7ad416d70ae8c396828f169d002a1",
"assets/FontManifest.json": "76f544867bebc45f974222da94255a21",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/NOTICES": "93131681408119b92c0082d5b67f9a71",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "eba5ceecaafd88124d49a2a77ba9018a",
"/": "eba5ceecaafd88124d49a2a77ba9018a",
"main.dart.js": "6e523ff7990d05d3a86befc063e822d4",
"manifest.json": "65ac275631cd9625429046391997610f",
"version.json": "bdacd593782ee93ea7a382c161c06427"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}

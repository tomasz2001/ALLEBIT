<script setup>
import { onMounted, ref } from 'vue';
import { test2_backend } from 'declarations/test2_backend/index';

const offers = ref([]);

async function getOffers(n) {
  const fetchedOffers = [];
  for (let i = 0; i < n; i++) {
    try {
      const offer = await test2_backend.oferta_cek(i);
      fetchedOffers.push(offer);
    } catch (error) {
      console.error(`Error fetching offer ${i}:`, error);
      break;
    }
  }
  offers.value = fetchedOffers;
}

onMounted(async () => {
  await getOffers(10);
});
</script>

<template>
  <header>
    <nav>
      <div class="nav-title"><h1 class="dot-font">AlleBit</h1></div>
      <ul class="nav-menu">
        <a href="#"><li class="dot-font">Przeglądaj oferty</li></a>
        <a href="add-offer.html"><li class="dot-font">Utwórz ofertę</li></a>
      </ul>
    </nav>
  </header>
  <main>
    <div v-if="offers.length" class="offers">
      <div v-for="offer in offers" :key="offer.cozaco" class="offer">
        <h1 class="dot-font">{{ offer.cozaco }}</h1>
        <p>{{ offer.oferta }}</p>
        <p>{{ offer.kapital }}</p>
        <h2 class="dot-font">{{ offer.cena }}</h2>
        <p>{{ offer.kontakt }}</p>
      </div>
    </div>
    <div v-else>Ładowanie ofert...</div>
  </main>
</template>
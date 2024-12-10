<script setup>
import { onMounted, ref } from 'vue';
import { test2_backend } from 'declarations/test2_backend/index';

const greeting = ref('');
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
  await getOffers(2);
});
</script>

<template>
  <main>
    <img src="/logo2.svg" alt="DFINITY logo" />
    <br />
    <br />
    <div v-if="offers.length">
      <div v-for="offer in offers" :key="offer.cozaco">
        {{ offer.cozaco }}
        {{ offer.kontakt }}
      </div>
    </div>
    <div v-else>Ładowanie ofert...</div>
  </main>
</template>
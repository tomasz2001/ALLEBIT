import { createPinia } from 'pinia';
import { createApp } from 'vue';
import './offers.scss';
import App from './App.vue';

createApp(App).use(createPinia()).mount('#app');

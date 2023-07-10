<script>
import FotoCard from "./FotoCard.vue";
import axios from "axios";
// import  {endpoint}  from "../stores/endpoint.js"

export default {
  data() {
    return {
      photos: [],
      isVisible:false,
      title: "La mia lista di foto!"
    }
},

created() {
  // API (funzione getPhotos dichiarata asincrona,al posto di await non passa alla linea successiva finche' non riceve la risposta da axios)
  const endpoint = "http://localhost:8080/api/v1";
  const getPhotos = async () => {
    try {
      const response = await axios.get(endpoint + '/photos');
      //se axios va in errore non riusciro' a valorizzare response e posso mettere tutto in un try catch
      this.photos = response.data;
     
    } catch (error) {
      console.log(error);
    }
    
      console.log(this.photos);
      
  };
  
  getPhotos(); // Chiamata alla funzione getPhotos
 
},


  components: {
    FotoCard,
  },
};
</script>

<template>
  <div v-if="this.photos.lenght != 0" >
    <h1 class="mt-3">{{ title }}</h1>
    <div class="row mt-5">
        <FotoCard v-for="photo in photos" :key="photo.id" :photo="photo"/>
     </div>
  </div>
  <div v-else="" >Non ci sono foto al momento</div>

  <!-- <nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav> -->
</template>

<style lang="scss" scoped></style>
<template>
  <div class="hello">
    <h1>Liste des jeux</h1>
    <li v-for="jeu in jeux" :key="jeu.id">
      {{ jeu.nom }}
    </li>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  data() {
    return {
      jeux: [],
    };
  },
  mounted() {
    axios.get('http://localhost:3000/') 
      .then(response => {
        this.jeux = response.data;
        console.log(this.jeux);
      })
      .catch(error => {
        console.error('Erreur lors de la récupération des données :', error);
      });
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>

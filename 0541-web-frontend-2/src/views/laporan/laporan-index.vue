<script>
  import HomeNavbar from '../../components/HomeNavbar.vue';
  import MenuCard from '../../components/menu-card.vue'  
  import {menuLaporan} from '../../data/staticData'
  export default{
    data(){
      return {
        menuLaporan
      }
    },
    methods : {
      changeClass(){
        document.body.classList.replace('body-center','body-normalflow');
      },

    },
    mounted(){
      this.changeClass()
    },


    components : {
      // LogoutButton,
      HomeNavbar,
      MenuCard
    }
  }
</script>
<template >
  <header>
    <home-navbar :message = "'Transaksi Member'"></home-navbar>
  </header>
  <main class="">
      <div class="pegawai-mo p-5 " >
        <div class=" row row-cols-2 row-cols-md-12" >
          <menu-card :data ="menuLaporan"></menu-card>
        </div>
      </div>
  </main>
</template>

<style scoped>


.pegawai-admin{
  height: 100vh;
  background-color: rgba(0,0,0,0.7  );
}
.pegawai-mo{
  height: 100vh;
  background-color: rgba(0,0,0,0.7  );
}
.pegawai-kasir{
  /* margin-top: 4em; */
  /* margin-left: 2em; */
  height: 100vh;
  background-color: rgba(0,0,0,0.7  );
  /* width: 100%; */
}

</style>

const app = Vue.createApp({
  created() {
    // Ideal to get your remote data during the created phase
    fetch(
      "http://localhost:8888/Anna_Nguyen_Ali_El-Maniary_HW3_Vue/lumen_games/public/games"
    )
      .then((res) => res.json())
      .then((data) => {
        this.gamesData = data;
        this.loadingGames = false;
      })
      .catch((error) => console.error(error));
  },
  data() {
    return {
      gamesData: [],
      title: "",
      genre: "",
      release_year: "",
      description: "",
      game_img: "",
      name: "",
      error: "",
      loading: false,
      loadingGames: true,
    };
  },

  methods: {
    getGame(id) {
      console.log(id);
      this.loading = true;
      this.error = false;
      const gameInfoCon = document.querySelector("#gameInfoCon");

      fetch(
        `http://localhost:8888/Anna_Nguyen_Ali_El-Maniary_HW3_Vue/lumen_games/public/games/${id}`
      )
        .then((res) => res.json())
        .then((data) => {
          if (data.length > 0) {
            console.log(data[0]);
            const gameData = data[0];
            this.loading = false;
            const gameInfoCon = document.querySelector("#gameInfoCon");
            // This is using the ternary operator (condition ? value_if_true : value_if_false), which is a shorthand for an if-else statement.
            this.title = gameData.name ? gameData.title : "Not available";
            this.genre = gameData.genre ? gameData.genre : "Not available";
            this.release_year = gameData.release_year
              ? gameData.release_year
              : "Not available";
            this.description = gameData.description
              ? gameData.description
              : "Not available";
            this.game_img = gameData.game_img
              ? gameData.game_img
              : "Not available";
            this.name = gameData.name ? gameData.name : "Not available";
            this.studio_img = gameData.studio_img
              ? gameData.studio_img
              : "Not available";
            this.headquarters = gameData.headquarters
              ? gameData.headquarters
              : "Not available";
            this.founded_year = gameData.founded_year
              ? gameData.founded_year
              : "Not available";
          } else {
            this.loading = false;
            this.error = "No game found with the given query";
          }
        })
        .then(() => {
          gameInfoCon.scrollIntoView({ behavior: "smooth", block: "end" });
        })
        .catch((error) => console.error(error));
    },
  },
}).mount("#app");

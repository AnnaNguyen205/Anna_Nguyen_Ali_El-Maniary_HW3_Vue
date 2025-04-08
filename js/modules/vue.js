export function vue() {
  const app = Vue.createApp({
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

    created() {
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

    watch: {
      gamesData(newData) {
        if (newData.length > 0) {
          // Animate after DOM updates
          this.$nextTick(() => {
            gsap.from(".game-item-con", {
              opacity: 0,
              y: 40,
              duration: 1,
              stagger: 0.2,
              ease: "power2.out",
              delay: 0.3,
            });
          });
        }
      },
    },

    methods: {
      getGame(id) {
        this.loading = true;
        this.error = false;

        fetch(
          `http://localhost:8888/Anna_Nguyen_Ali_El-Maniary_HW3_Vue/lumen_games/public/games/${id}`
        )
          .then((res) => res.json())
          .then((data) => {
            if (data.length > 0) {
              const gameData = data[0];
              this.loading = false;
              this.title = gameData.title || "Not available";
              this.genre = gameData.genre || "Not available";
              this.release_year = gameData.release_year || "Not available";
              this.description = gameData.description || "Not available";
              this.game_img = gameData.game_img || "Not available";
              this.name = gameData.name || "Not available";
              this.studio_img = gameData.studio_img || "Not available";
              this.headquarters = gameData.headquarters || "Not available";
              this.founded_year = gameData.founded_year || "Not available";

              // animate info box
              this.$nextTick(() => {
                window.animateInfoBox?.();
              });
            } else {
              this.loading = false;
              this.error = "No game found with the given query";
            }
          })
          .then(() => {
            document
              .querySelector("#gameInfoCon")
              .scrollIntoView({ behavior: "smooth", block: "end" });
          })
          .catch((error) => console.error(error));
      },
    },
  }).mount("#app");
}

(()=> {
    const vm = new Vue({
        el: '#app',

        data: {
            mainmessage : "welcome to my video app!",
            videodata : [],
            singlemoviedata : [],

            videotitle : "",
            videosource : "",
            videodescription : "",
            videogenre: "",
            image1 : "",
            image2 : "",
            image3 : "",
            synopsis: "",
            showMore : false,
            showDetails : false
        },

        created : function() {
            this.fetchMovieData(null);
        },

        methods : {

            loadMovie(e) {
                // stub
                e.preventDefault();

                dataKey = e.currentTarget.getAttribute('href');

                currentData = this.videodata.filter(video => video.vid_path === dataKey);

                this.videotitle = currentData[0].vid_name;
                this.videodescription = currentData[0].vid_desc;
                this.videosource = dataKey;

                this.showDetails = true;

                setTimeout(function() { window.scrollTo(0, 1200); }, 500);
            },

            scrollBackUp() {
                window.scrollTo(0, 0);
                this.showDetails = false;
                this.videsource = "";
            },

            
            closeMore() {
                this.showMore = false;
            },

            fetchMovieData(movie) {
                url = movie ? `./includes/index.php?movie=${movie}` : './includes/index.php';

                fetch(url)
                .then(res => res.json())
                .then(data => {
                    if (movie) {
                        console.log(data);
                        this.singlemoviedata = data;
                    } else {
                        console.log(data);
                        this.videodata = data;
                    }
                })
                .catch(function(error) {
                    console.log(error);
                });
            },  

            fetchMore(e) {
                var more = e.currentTarget.dataset.video;
                url = more ? `./includes/index.php?more=${more}` : './includes/index.php';
                fetch(url) 
                .then(res => res.json())
                .then(data => {
                  console.log(data);
                  this.image1 = data[0].more_image1;
                  this.image2 = data[0].more_image2;
                  this.image3 = data[0].more_image3;
                  this.synopsis = data[0].more_synopsis;
                  
                  this.showMore = true;
                })
                .catch(function(error) {
                    console.log(error);
                });
            }
        }
    });
})();
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>sample Home</title>
	<style>
body{
    background-color: #3d3d3d;
    padding: 0px;
    margin:0px;
    width:100%;
    height:100vh;
    font-family: 'Lato';
}
.wrapper{
    position: absolute;
    top:50%;
    left:50%;
    transform: translate(-50%, -50%);
    width:100%;
    max-width: 650px;
    height:auto;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}
.card{
    flex: 1;
    flex-basis: 300px;
    flex-grow: 0;
    height: 440px;
    background: #fff;
    border: 2px solid #fff;
    box-shadow: 0px 4px 7px rgba(0,0,0,.5);
    cursor: pointer;
    transition: all .5s cubic-bezier(.8,.5,.2,1.4);
    overflow: hidden;
    position: relative;
}
.card img{
    width: 100%;
    height:100%;
    transition: all .5s cubic-bezier(.8,.5,.2,1.4);
}
.descriptions{
    position: absolute;
    top:0px;
    left:0px;
    background-color: rgba(255,255,255,.7);
    width:100%;
    height:100%;
    transition: all .7s ease-in-out;
    padding: 20px;
    box-sizing: border-box;
    clip-path: circle(0% at 100% 100%);
}
.card:hover .descriptions{
    left:0px;
    transition: all .7s ease-in-out;
    clip-path: circle(75%);
}
.card:hover{
    transition: all .5s cubic-bezier(.8,.5,.2,1.4);
    box-shadow: 0px 2px 3px rgba(0,0,0,.3);
    transform: scale(.97);
}
.card:hover img{
    transition: all .5s cubic-bezier(.8,.5,.2,1.4);
    transform: scale(1.6) rotate(20deg);
    filter: blur(3px);
}
.card h1{
    color: #ff3838;
    letter-spacing: 1px;
    margin: 0px;
}
.card p{
    line-height: 24px;
    height: 70%;
}
.card button{
    width: fit-content;
    height: 40px;
    cursor: pointer;
    border-style: none;
    background-color: #ff3838;
    color:#fff;
    font-size: 15px;
    outline: none;
    box-shadow: 0px 2px 3px rgba(0,0,0,.4);
    transition: all .5s ease-in-out;
}
.card button:hover{
    transform: scale(.95) translateX(-5px);
    transition: all .5s ease-in-out;
}

@keyframes youtubeAnim{
  0%,100%{
    color:#c9110f;
  }
  50%{
    color:#ff0000;
  }
}
/* footer  */

	</style>
</head>
<body>

<table>
    <tr>
    {% for x in rows %}
        <td><div class="wrapper">
        <div class="card">
            <img src="/static/image/movie/{{x['Image']}}">
            <div class="descriptions">
                <h1>{{x["Movie_Name"]}}</h1>
                <button>
                    <i class="fab fa-youtube"></i>
                    Play trailer on YouTube
                </button>
            </div>
        </div>
    </div>
        </td>
    </tr>
    {% endfor %}
</table>









</body>
</html>

<table>
    <tr>
    {% for x in rows %}
        <td><div class="wrapper">
        <div class="card">
            <img src="/static/image/movie/{{x['Image']}}">
            <div class="descriptions">
                <h1>{{x["Movie_Name"]}}</h1>
                <button>
                    <i class="fab fa-youtube"></i>
                    Play trailer on YouTube
                </button>
            </div>
        </div>
    </div>
        </td>
    {% endfor %}
    </tr>
</table>
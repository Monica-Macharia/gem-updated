import './App.css';
import React, { useEffect, useState } from 'react';
import Card from "./Card"
import Hidden from "./Hidden"


function App() {

  const [destinations, setDestinations] = useState([])

  useEffect(()=> {

    fetch("/destinations")
    .then((res) => res.json())
    .then((destinations) => {
      // const fourElements = destinations.slice(0, 3);
      setDestinations(destinations)
    })
  }, []);

  //handle add
  function handleAddDestination(newDestination){
    setDestinations([...destinations, newDestination ])
  }

  //handle update
  function updateDestination(newCard){
  let updatedCard;
    updatedCard = destinations.map((destination)=>{
      if(destination.id === newCard.id ){
        return newCard;
      }else{
        return destination;
      }
    });
    setDestinations(updatedCard)
  }
  
  //handle delete
    function handleDelete(deletedDestination){
      let updateDestinations;
      updateDestinations = destinations.filter((destination) => destination.id !== deletedDestination);
      setDestinations(updateDestinations)
    }
 

  return (
    <div className="app">
      {/* background video */}
      <section className="background-video">
          <video className="section" autoPlay loop muted >
                <source src="https://player.vimeo.com/external/284652268.sd.mp4?s=0bf23f0d69280b20e39fb2dd5501a5b0d4612a77&profile_id=164&oauth2_token_id=57447761" type="video/mp4"/>
            </video>
            {/* video overlay */}
        <div className="overlay"></div>

        <div className="action">

          < Hidden onAddDestination={handleAddDestination}/>
        </div>
        
        <div className="cards">
        { destinations.map((destination)=>
        <Card 
        key={destination.id} 
        destination={destination}
        onDeleteDestination={handleDelete}
        onUpdateDestination={updateDestination}
         />
        )}
        </div>

        
      </section>

    </div>
  );
}

export default App;

import React, {useState} from 'react';

export default function Card({key, destination, onUpdateDestination, onDeleteDestination}){
      const [name, setName] = useState("");
      const [showEdit, setShowEdit]= useState(false)
    
      function handleUpdate(e){
          e.preventDefault();
          fetch(`/destinations/${destination.id}`,{
            method: "PUT",
            headers:{
              "Content-Type": "application/json",
            },
            body: JSON.stringify({
              name: name
            }),
          })
          .then((res) => res.json())
          .then((updatedName) => onUpdateDestination(updatedName))
      }
  
      function deleteClick(){
        fetch(`/destinations/${destination.id}`, {
            method: "DELETE",
          })
            .then((r) => r)
            .then(() => onDeleteDestination(destination));
    }

        function clickEdit(){
          setShowEdit(!showEdit)
        }
       
return(
           
            <div className="card-item">
            <img className="image" src={destination.image} alt="Destination"/>
            <div className="item-info">
              <h2>Name: {destination.name}</h2>
              <p>Description: {destination.description}</p>
              <div className="buttons">
              <button onClick={clickEdit} className="edit">
                {showEdit ? "Close" : "Edit"}
              </button>

             {showEdit && <form className = "updater" onSubmit= {handleUpdate}>
                    <label className="labelEdit">
                  
                    <input className="editForm" type = "string" name="name" placeholder="Name" value= {name} onChange={(e) => setName(e.target.value)}/>
                  </label>
                  <label >
                  <input className="editButton" type="submit" name="Update" />
                  </label>
            </form>}

              <button onClick={deleteClick} className="delete">Delete</button>
              </div>
            </div>
    </div> 
  

)
}
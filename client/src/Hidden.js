import React, {useState} from 'react';

function Hidden({onAddDestination}){

    const [name, setName] = useState("");
    const [image, setImage] = useState("");
    const [video, setVideo] = useState("");
    const [description, setDescription] = useState("");

    //form show and hide state
    const[formShow, setFormShow] = useState(false)

    function handleNewSubmits(e){

        e.preventDefault();

        const newDestination=
        {
            name: name,
            image: image, 
            video: video,
            description: description
        };

        fetch("/destinations",{
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            
            },
            body: JSON.stringify(newDestination),
        })
        .then((r) => r.json())
        .then((newData) => onAddDestination(newData));

        //cleans the form inputs after submission
        setName('');
        setImage('');
        setVideo('');
        setDescription('');
    }

    function handleClickForm(){
        setFormShow(!formShow);
    }

    return(
        <>
            <h1 className="hidden">Know of a Hidden<br/> Gem?</h1>
            <button onClick={handleClickForm}className="add">
                {formShow ? "Close Form" : "Add to List" }
                </button>
        {formShow && (
                <div className="overlay1">
                <form className = "formTask"
                    onSubmit = {handleNewSubmits}>
                <label>
                    Name:
                    <input type = "string" name="name" value= {name} onChange={(e) => setName(e.target.value)} />
                </label>
                <label>
                    Image:
                    <input type = "string" name="image" value= {image} onChange={(e) => setImage(e.target.value)}/>
                </label>
                <label>
                    Video:
                    <input type = "string" name="video" value= {video} onChange={(e) => setVideo(e.target.value)}/>
                </label>
                <label>
                    Description:
                    <input type = "text" name="description" value= {description} onChange={(e) => setDescription(e.target.value)} />
                </label>
                <label>
                <input type="submit" name="Submit" />
            </label>
                </form>
                </div>
         )}  
          
        </>
    )
}
export default Hidden;
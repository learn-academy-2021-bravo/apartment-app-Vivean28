import React, { Component } from 'react';
class Appartmnt extends Component {
    constructor(props) {
        super(props);
        this.state = {  }
    }
    render() { 
        console.log(this.props.apartments)
        return ( 
            <div>
                <h1>Apartmnt</h1>
            </div>
         );
    }
}
 
export default Appartmnt;
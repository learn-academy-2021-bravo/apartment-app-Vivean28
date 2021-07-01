import React, { Component } from 'react';
import { Link } from 'react-router-dom'


class ApartmentIndex extends Component {
  
    render() { 
        // console.log(this.props.apartments)
        const { apartments } = this.props
        // console.log(apartments)

        return ( 
            <div>
                <h1>Apartmnt</h1>
                {apartments && apartments.map(apartment =>{
                    return  (<div key={apartment.id}>
                        <p>{apartment.street}</p>
                        <p>{apartment.city}</p>
                        <p>{apartment.state}</p>
                        <p>{apartment.manager}</p>
                        <Link to={`/apartmentshow/${apartment.id}`}>Click here for more info</Link>
                        {/* <p>{apartment.email}</p>
                        <p>{apartment.price}</p>
                        <p>{apartment.bedrooms}</p>
                        <p>{apartment.bathrooms}</p>
                        <p>{apartment.pets}</p>
                        <p>{apartment.user_id}</p> */}
                    </div>)
                })} 
                
            </div>
         );
    }
}
 
export default ApartmentIndex;
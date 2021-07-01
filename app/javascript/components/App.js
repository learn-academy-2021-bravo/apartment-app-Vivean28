import React from "react"
import Header from './components/Header'
import NotFound from './pages/NotFound'
import Home from './pages/Home'
import ApartmentIndex from './pages/ApartmentIndex'
import ApartmentShow from './pages/ApartmentShow'


import {
  BrowserRouter as Router,
  Route,
  Switch
} from 'react-router-dom'



class App extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      apartments: []
    }

  }


  componentDidMount(){
    this.readApartments()
  }

  readApartments = () =>{
    fetch("http://localhost:3000/apartments")
    .then(response => response.json())
    .then(payload => this.setState({apartments: payload }))
    .catch(errors => console.log("read errors:",errors ))
  }


  render() {
    const {
      logged_in,
      current_user,
      new_user_route,
      sign_in_route,
      sign_out_route
    } = this.props
    console.log(this.state.apartments)

    // console.log("logged in", logged_in )
    // console.log(this.state.apartments)
    return (
      <Router>

       <Header sign_in_route={sign_in_route} 
       sign_out_route={sign_out_route}
       logged_in={logged_in}
       new_user_route={new_user_route}/>


       <Switch>
         <Route exact path="/" component={Home}/>
         <Route path="/apartmentindex"  render={ (props) => {
           return <ApartmentIndex apartments={ this.state.apartments}/>
           }}/>
        
         <Route path="/apartmentshow/:id" render={ (props) => {
            let id = props.match.params.id
            let apartment = this.state.apartments.find(apartment => apartment.id === +id)
            // .find() will return the first value that matches what I am looking for and it stops
            return <ApartmentShow apartment={ apartment } deleteCat={ this.deleteCat } />
          }} />
         <Route component={NotFound}/>

       </Switch>
      </Router>
    )
  }
}

export default App
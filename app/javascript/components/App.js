import React from "react"
import PropTypes from "prop-types"
import Header from './components/Header'

class App extends React.Component {
  render() {
    const {
      logged_in,
      current_user,
      new_user_route,
      sign_in_route,
      sign_out_route
    } = this.props
    console.log("logged in", logged_in )
    return (
      <React.Fragment>
       <Header sign_in_route={sign_in_route} sign_out_route={sign_out_route}/>
      </React.Fragment>
    )
  }
}

export default App
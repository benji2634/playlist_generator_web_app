const React = require('react')

const Artist = (props) => (
  <div className='artist'>
    <img src={`images/${props.image}`} className='artist-image' />
    <div className='artist-details'>
      <h3 className='artist-name'>{props.name}</h3>
      <a className='artist-website' href={props.website}>({props.website})</a>
    </div>
  </div>
)

const { string } = React.PropTypes

Artist.propTypes = {
  name: string.isRequired,
  image: string.isRequired,
  website: string.isRequired
}


module.exports = Artist
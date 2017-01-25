const React = require('react')

const SongSet = (props) => (
  <div className='song'>
    <img src={`images/${props.image}`} className='song-image' />
    <div className='song-details'>
      <h3 className='song-name'>{props.name}</h3>
    </div>
  </div>
)

const { string } = React.PropTypes

SongSet.propTypes = {
  name: string.isRequired,
  image: string.isRequired
}


module.exports = SongSet
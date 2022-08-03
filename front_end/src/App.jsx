import './App.css';
import Navbar from './componets/Navbar'
import Footer from './componets/Footer'
import About from './componets/about'
import Front from './componets/first_part';
import Two from './componets/two';
import Three from './componets/three';
function App() {
  return (
    <div className='total'>
      <Navbar />
      <Front/>
      <Two/>
      <Three/>
      <About/>
      <Footer />
    </div>
  );
}

export default App;

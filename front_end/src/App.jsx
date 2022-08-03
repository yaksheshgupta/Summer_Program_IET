import './App.css';
import Navbar from './componets/Navbar'
import Footer from './componets/Footer'
import Check from './componets/check'
import About from './componets/about'
import Front from './componets/first_part';
import Two from './componets/two';
function App() {
  return (
    <div className='total'>
      <Navbar />
      <Front/>
      <Two/>
      <Check />
      <About/>
      <Footer />
    </div>
  );
}

export default App;

import './App.css';
import Navbar from './componets/Navbar'
import Footer from './componets/Footer'
import Check from './componets/check'
import About from './componets/about'
import Front from './componets/first_part';
function App() {
  return (
    <>
      <Navbar />
      <Front/>
      <Check />
      <About/>
      <Footer />
    </>
  );
}

export default App;

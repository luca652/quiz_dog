import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ['card1', 'card2', 'card3', 'card4', 'card5']

  connect() {
    console.log("Connected!");
    let elements = [this.card1Target, this.card2Target, this.card3Target, this.card4Target, this.card5Target];
    console.log(elements);

    elements.forEach((el) => {
      const minPerSlide = 3
      let next = el.nextElementSibling
      for (let i = 0; i < 2; i++) {
          if (!next) {
              // wrap carousel by using first child
            next = elements[0]
          }
          let cloneChild = next.cloneNode(true)
          el.appendChild(cloneChild.children[0])
          next = next.nextElementSibling
      }
  })
  }
}

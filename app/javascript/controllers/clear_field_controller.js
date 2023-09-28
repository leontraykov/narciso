// app/javascript/controllers/clear_field_controller.js
import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['form']

  clear() {
    this.formTarget.reset();
  }
}

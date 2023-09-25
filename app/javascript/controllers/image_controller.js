// app/javascript/controllers/image_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["field", "preview"]

  connect() {
    if(this.hasPreviewTarget) {
      // Действия при подключении, если нужно
    }
  }

  remove() {
    if(confirm("Are you sure you want to remove the image?")) {
      // Удалите изображение
      this.fieldTarget.value = null;
      
      // Скройте или удалите превью изображения
      this.previewTarget.remove();
    }
  }
}

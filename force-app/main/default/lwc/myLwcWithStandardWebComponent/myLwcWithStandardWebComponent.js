import { LightningElement } from "lwc";
import { loadScript } from "lightning/platformResourceLoader";
import qrCode from "@salesforce/resourceUrl/qrCode";    

export default class MyLwcWithStandardWebComponent extends LightningElement {

  renderedCallback() {
    loadScript(this, qrCode);
  }
}

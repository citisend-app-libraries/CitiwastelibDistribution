# README

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/citisend-app-libraries/CitiwastelibDistribution">
    <img src="images/logo.png" alt="Logo" width="800" height="229">
  </a>

  <h3 align="center">Citiwaste Librería para iOS</h3>

</div>


<!-- TABLE OF CONTENTS -->
<details>
  <summary>Tabla de contenidos</summary>
  <ol>
    <li>
      <a href="#about-the-project">Sobre el proyecto</a>
    </li>
    <li>
      <a href="#getting-started">Primeros pasos</a>
      <ul>
        <li><a href="#prerequisites">Requisitos previos</a></li>
        <li><a href="#installation">Instalación</a></li>
      </ul>
    </li>
    <li><a href="#usage">Utilización</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## Acerca del proyecto

Con esta librería conseguimos aportar la herramienta necesaria para la implantación de la apertura de contenedores desarrollados por Citisend.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Primeros pasos

### Requisitos previos

Para la utilización de este proyecto, necesitarás un código de proyecto proporcionado por Citisendm, además necesitaremos Xcode 15 o superior.

### Instalación

1. Swift Package Manager

2. Clone the repo
   ```
        dependencies: [
            .package(url: "https://github.com/citisend-app-libraries/CitiwastelibDistribution", .upToNextMajor(from: "0.0.20"))
        ]
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- USAGE EXAMPLES -->
## Utilización

Describa cómo utiliza los servicios de localización y bluetooth la app, es obligatorio para poder utilizar la librería otorgar estos permisos a la aplicación


| Usage key                                                 | Required when:                                                                   |
|-----------------------------------------------------------|----------------------------------------------------------------------------------|
| `NSLocationWhenInUseUsageDescription`              | The app requests When in Use or Always authorization.                            |
| `NSLocationAlwaysAndWhenInUseUsageDescription` | The app requests Always authorization.                                           |
| `NSLocationTemporaryUsageDescriptionDictionary`             | Used when you want to temporary extend the precision of your authorization level |
| `Privacy - Bluetooth Always Usage Description`             | Used when you want to temporary extend the precision of your authorization level |
|                                                           |                                                                                  |

Importa la librería Citiwastelib

   ```
    import Citiwastelib
   
   ```
   
Declara el uso del protocolo CitiConnectProtocol

   ```
   class ViewController: UIViewController, CLLocationManagerDelegate, CitiConnectProtocol {
   
   ```
   
Implementa los métodos necesarios para la receción de eventos

   ```
    func onTransmision(id: UUID, major: CLBeaconMajorValue, minor: CLBeaconMinorValue) {
       
    }
    
    func onDiscover(name: String, value: Int) {
        switch value {
         case CitiConnect.shared.EVENT_PRESENCE:
            // Presencia detectada 
         default: break
        }
    }
    
    func onEvent(name: String, value: Int) {
        switch value {
        case CitiConnect.shared.EV2_SUCCEED_EVENT:
            // SUCCEEDED
        case CitiConnect.shared.EV2_ERROR_ID_REJECTED_WRONG_PROJECT:
            // WRONG PROJECT
        case CitiConnect.shared.EV2_ERROR_ID_REJECTED_POLITICS_DEVICE_MODE:
            // REJECTED
        default: break
        }
    }
    
    func onError(typeError: Int) {
        CitiConnect.shared.destroy()
        switch typeError {
            case CitiConnect.shared.TIME_OUT:
             // TIME OUT
        default: break
            
    }
    
   
   ```
   
Solicitar el uso de la localización e inicializa la librería

   ```
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        
        CitiConnect.shared.delegate = self
        CitiConnect.shared.setUpTimers(timer_lock: 5.0)
   
    }
   
   ```   
   
Puedes iniciar el método discover para comenzar el proceso de apertura de contenedor, para iniciar este método necesitas el id de proyecto y el usuario de la app.
   ```
    CitiConnect.shared.discover(project_id: project, user_id: user)
    
   ```   
   
Utiliza destroy() para eliminar la instancia de conexión cuando lo desees.
    ```
        CitiConnect.shared.destroy()

    ```  



<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Citisend.io - info@citisend.io

Enlace al proyecto: [https://github.com/citisend-app-libraries/CitiwastelibDistribution](https://github.com/citisend-app-libraries/CitiwastelibDistribution)

<p align="right">(<a href="#readme-top">back to top</a>)</p>




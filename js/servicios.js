// Definición de servicios con precios y descripciones detalladas
const servicios = {
    'Instalacion de Sistema Operativo': {
        precio: 50000,
        descripcion: 'Instalación completa del sistema operativo Windows, incluyendo todos los controladores necesarios y actualizaciones del sistema.'
    },
    'Instalacion de Programas Basicos': {
        precio: 30000,
        descripcion: 'Instalación de programas esenciales: navegadores, antivirus, compresores, lectores PDF y reproductores multimedia.'
    },
    'Instalacion de Office': {
        precio: 40000,
        descripcion: 'Instalación completa del paquete Microsoft Office, incluyendo Word, Excel, PowerPoint y más.'
    },
    'Activacion de Office o Sistema': {
        precio: 35000,
        descripcion: 'Activación permanente y legal de Windows o Microsoft Office para acceder a todas las funcionalidades.'
    },
    'Optimizacion de Sistema Operativo': {
        precio: 45000,
        descripcion: 'Limpieza profunda del sistema, eliminación de archivos temporales, optimización del rendimiento y velocidad.'
    },
    'Diagnóstico de Pc': {
        precio: 25000,
        descripcion: 'Evaluación completa del hardware y software para identificar problemas y recomendar soluciones.'
    }
};

// Función para actualizar las descripciones en la página
function actualizarDescripciones() {
    document.querySelectorAll('.error').forEach(errorDiv => {
        const checkbox = errorDiv.querySelector('.error-checkbox');
        const descripcion = errorDiv.querySelector('.descripcion-error p');
        if (checkbox && descripcion && servicios[checkbox.value]) {
            descripcion.textContent = servicios[checkbox.value].descripcion;
        }
    });
}

// Función para calcular el total
function calcularTotal() {
    let total = 0;
    document.querySelectorAll('.error-checkbox:checked').forEach(checkbox => {
        if (servicios[checkbox.value]) {
            total += servicios[checkbox.value].precio;
        }
    });
    return total;
}

// Función para mostrar el total
function mostrarTotal() {
    const total = calcularTotal();
    let totalElement = document.getElementById('total-servicios');
    if (!totalElement) {
        totalElement = document.createElement('div');
        totalElement.id = 'total-servicios';
        totalElement.className = 'total-servicios';
        document.querySelector('.container-errores').after(totalElement);
    }
    totalElement.innerHTML = `<h3>Total Estimado: $${total.toLocaleString('es-CO')}</h3>`;
}

// Función para agregar estilos dinámicos
function agregarEstilos() {
    const style = document.createElement('style');
    style.textContent = `
        .total-servicios {
            text-align: center;
            margin: 20px 0;
            padding: 15px;
            background-color: #f8f9fa;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .total-servicios h3 {
            color: #2c3e50;
            margin: 0;
            font-size: 1.5em;
        }
        .error-checkbox:checked + .titulo-producto {
            color: #2ecc71;
        }
        .error {
            transition: transform 0.3s ease;
        }
        .error:hover {
            transform: translateY(-5px);
        }
    `;
    document.head.appendChild(style);
}

// Función para inicializar la página
function inicializarPagina() {
    actualizarDescripciones();
    agregarEstilos();
    
    // Agregar eventos a los checkboxes
    document.querySelectorAll('.error-checkbox').forEach(checkbox => {
        checkbox.addEventListener('change', mostrarTotal);
    });

    // Modificar la función enviarWhatsApp existente
    window.enviarWhatsAppOriginal = window.enviarWhatsApp;
    window.enviarWhatsApp = function() {
        let erroresSeleccionados = [];
        document.querySelectorAll('.error-checkbox:checked').forEach(checkbox => {
            erroresSeleccionados.push(checkbox.value);
        });

        if (erroresSeleccionados.length === 0) {
            alert('Por favor selecciona al menos un servicio antes de enviar.');
            return;
        }

        const total = calcularTotal();
        let mensaje = '¡Hola! Me interesa cotizar los siguientes servicios:\n\n';
        erroresSeleccionados.forEach(error => {
            mensaje += `✅ ${error} - $${servicios[error].precio.toLocaleString('es-CO')}\n`;
        });
        mensaje += `\n💰 Total Estimado: $${total.toLocaleString('es-CO')}`;

        const numeroWhatsApp = '573003979143';
        const mensajeCodificado = encodeURIComponent(mensaje);
        
        // Intentar abrir primero en la app de WhatsApp
        const urlApp = `whatsapp://send?phone=${numeroWhatsApp}&text=${mensajeCodificado}`;
        const urlWeb = `https://wa.me/${numeroWhatsApp}?text=${mensajeCodificado}`;

        // Crear un elemento <a> invisible para abrir WhatsApp
        const link = document.createElement('a');
        link.href = urlApp;
        link.style.display = 'none';
        document.body.appendChild(link);
        link.click();
        document.body.removeChild(link);

        // Fallback: Si la app no está instalada, abrir en el navegador después de un breve delay
        setTimeout(() => {
            window.open(urlWeb, '_blank');
        }, 1500);
    };
}

// Inicializar cuando el DOM esté listo
document.addEventListener('DOMContentLoaded', inicializarPagina);
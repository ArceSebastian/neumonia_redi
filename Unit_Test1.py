import unittest
import Back


## No se esta probando una funcionalidad especifica del sistema.


class Test_1(unittest.TestCase):
    def metodo_prueba(self):
        self.debug(Back.load_img_file)

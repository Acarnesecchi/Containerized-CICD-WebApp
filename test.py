import unittest
import importlib


class Test(unittest.TestCase):
    def test(self):
        try:
            importlib.import_module('main')
            self.assertTrue(True)
        except ImportError:
            self.assertTrue(False)


if __name__ == '__main__':
    unittest.main()

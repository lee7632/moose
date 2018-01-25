#!/usr/bin/env python
#pylint: disable=missing-docstring
#* This file is part of the MOOSE framework
#* https://www.mooseframework.org
#*
#* All rights reserved, see COPYRIGHT for full restrictions
#* https://github.com/idaholab/moose/blob/master/COPYRIGHT
#*
#* Licensed under LGPL 2.1, please see LICENSE for details
#* https://www.gnu.org/licenses/lgpl-2.1.html
#pylint: enable=missing-docstring

import unittest
from MooseDocs.common import slugify

class TestSlugify(unittest.TestCase):

    INVALID = [':', '\\', '.', '[', ']', '(', ')', '!', '"', "'", '*', '?', '<', '>', '|']

    def testBasic(self):
        """
        Test basic conversion and invalid characters.
        """
        self.assertEqual(('Foo_Bar', True), slugify('Foo Bar'))
        for x in self.INVALID:
            string = 'Foo{}Bar'.format(x)
            self.assertEqual((string, False), slugify(string))

    def testReplace(self):
        """
        Test replacement.
        """
        for x in self.INVALID:
            string = 'Foo{}Bar'.format(x)
            replaced = 'FooXBar'.format(x)
            self.assertEqual((replaced, True), slugify(string, (x, 'X')))


if __name__ == '__main__':
    unittest.main(verbosity=2)

class Common(object):
    def __init__(self,x):
        self.x = x
    def sharedMethod(self):
        print(self.x)

class Alpha(object):
    def __init__(self):
         self.common = Common("Alpha")
    def sharedMethod(self):
         self.common.sharedMethod()

class Bravo(object):
    def __init__(self):
         self.common = Common("Bravo")
    def sharedMethod(self):
         self.common.sharedMethod()
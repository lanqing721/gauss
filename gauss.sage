class GaussianRational:
    def __init__(self, x, y):
        self.x = QQ(x)
        self.y = QQ(y)
    def __repr__(self):
        return "%s + %s*i"%(self.x,self.y)
    def __add__(self, right):
        """Add together two numbers. (add a docstring)"""
        return GaussianRational(self.x+right.x, self.y+right.y)
    def __sub__(self, right):
        return GaussianRational(self.x-right.x, self.y-right.y)
    def __crazy__(self, crazy):
        return 'I'm crazy'
    def plot(self):
        return line([(0,0),(self.a,self.b)], color = 'green')
    def length(self):
        if not hasattr(self,"_l"): 
            self._l = math.sqrt(self.a**2 + self.b**2)    
        return self._l

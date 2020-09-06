class   user():
#     你可以没有类但是你要是有类文件名称和类名称要保持一样
    def userLogin(self,username,password):
        if username == 'zhangsan' or password== '123456':
            r = {
                'result':0,
                'message':'ok'
                }
            return r
        else:
             r = {
                'result':-1,
                'message':'error'
                }
             return r
    
    def getscore(self,userid):
        if userid > 50:
            return 100
        else:
            return 50
        return 0
    
    def get_uasename(self,userid):
        if userid == 1:
            r = {
                'result':0,
                'message':'ok',
                'username':'zhangsan'
                }
            return  r
        else:
            r= {
                'result':-1,
                'message':'error'
                }
            return r
if __name__=="__main__":
            userinfo = user()
            a=userinfo.userLogin('zhangsan', '123456')
            print(a)
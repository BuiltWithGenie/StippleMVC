(pwd() != @__DIR__) && cd(@__DIR__) # allow starting app from bin/ dir

using StippleMVC
const UserApp = StippleMVC
StippleMVC.main()

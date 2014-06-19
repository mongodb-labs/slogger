slogger
=======

Below is an example of how to use slogger:

    import (
        "github.com/10gen-labs/slogger/v1"
    )

    type MyStruct struct {
        slogger.Logger
    }

    func NewMyStruct() *MyStruct {
        return &MyStruct{
            Logger: slogger.Logger {
                Prefix: "test",
                Appenders: []slogger.Appender{
                    slogger.LevelFilter(slogger.Debug, slogger.StdOutAppender()),
                },
            },
        }
    }

    func (self *MyStruct) example() {
        self.Logf(Debug, "This is a debug statement")
    }

	myStruct := NewMyStruct()
	myStruct.example()


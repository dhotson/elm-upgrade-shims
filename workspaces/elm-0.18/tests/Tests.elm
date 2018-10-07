module Tests exposing (tests)

import Expect
import Shims.String
import Shims.Tuple
import Test exposing (Test, describe, test)


tests : Test
tests =
    describe "Shims"
        [ describe "String"
            [ test "fromInt" <|
                \() ->
                    Expect.equal "42" (Shims.String.fromInt 42)
            , test "fromFloat" <|
                \() ->
                    Expect.equal "3.141" (Shims.String.fromFloat 3.141)
            ]
        , describe "Tuple"
            [ test "pair" <|
                \() ->
                    Expect.equal ( 1, 2 ) (Shims.Tuple.pair 1 2)
            ]
        ]

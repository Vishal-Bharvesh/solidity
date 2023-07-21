// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract LoopContract
{
// while
    // _number 5
    //  digit 1*2*3*4*5(_number)

    function exeWhile(int _number) pure public returns(int)
    {
        //factorial

        int fact=1;
        int digit=1; // init 1
        while( digit <= _number) // cond 2
        {
            //fact =fact  *  
            fact *= digit;
            digit++; // step 3
        }        
        return fact;
    }


//do.. while

    function exeDoWhile(int _number) pure public returns(int)
    {
        //factorial

        int fact=1;
        int digit=1; // init 1
       do {
           fact = fact * digit;
            digit++;   // step 2
          }while(digit <= _number); // cond 3
        return fact;
    }

//for 

    function exeFor(int _number) pure public returns(int)
    {
        int fact=1;
        int digit;

        //for( init ; cond  ; step  )
        for( digit=1 ; digit <=_number ; digit++ )
        {
                 fact *= digit;
        }

        return fact;
    }

}
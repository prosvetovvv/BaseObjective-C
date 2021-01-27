//
//  main.m
//  BaseObjective-C
//
//  Created by Vitaly Prosvetov on 27.01.2021.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1
        
        CGFloat firstNumber;
        CGFloat secondNumber;
    
        printf("Enter two numbers: ");
        scanf("%lf %lf", &firstNumber, &secondNumber);
        
        CGFloat sum = firstNumber + secondNumber;
        CGFloat difference = firstNumber - secondNumber;
        CGFloat multiplication = firstNumber * secondNumber;
        CGFloat division = firstNumber / secondNumber;
        NSInteger remainder = (int)firstNumber % (int)secondNumber;
        
        NSLog(@"Sum = %.1lf", sum);
        NSLog(@"Difference = %.1lf", difference);
        NSLog(@"Multiplication = %.1lf", multiplication);
        NSLog(@"Division = %.1lf", division);
        NSLog(@"Remainder = %ld", (long)remainder);
        
        // 2
        
        NSLog(@"Sum = %.1lf, Difference = %.1lf, Multiplication = %.1lf, Division = %.1lf, Remainder = %ld",
              sum,
              difference,
              multiplication,
              division,
              (long)remainder);
        
        // 3
        
        CGFloat thirdNumber;
        
        printf("Enter three numbers: ");
        scanf("%lf %lf %lf", &firstNumber, &secondNumber, &thirdNumber);
        
        CGFloat averageValue = (firstNumber + secondNumber + thirdNumber) / 3;
        
        NSLog(@"Average value = %.1lf", averageValue);
    }
    return 0;
}

//
//  main.m
//  BaseObjective-C
//
//  Created by Vitaly Prosvetov on 27.01.2021.
//
 
#import <Foundation/Foundation.h>
 
// 1 =====================================
NSString* inputSymbol() {
    char inputSymbol;
  
    printf("Enter One Symbol: ");
    scanf("%c", &inputSymbol);
       
    NSString* convertedSymbol = [NSString stringWithFormat:@"%c", inputSymbol];
    
    return [convertedSymbol lowercaseString];
}
 
BOOL isAlphabetInclude(NSString* symbol) {
    NSString *alphabet = @"abcdefghijklmnopqrstuvwxyz";
    return [alphabet containsString: symbol];
}
 
// 2 =======================================
CGFloat sum(CGFloat firstNumber, CGFloat secondNumber) {
    return firstNumber + secondNumber;
}
 
CGFloat difference(CGFloat firstNumber, CGFloat secondNumber) {
    return firstNumber - secondNumber;
}
 
CGFloat multiplication(CGFloat firstNumber, CGFloat secondNumber) {
    return firstNumber * secondNumber;
}
 
NSString* division(CGFloat firstNumber, CGFloat secondNumber) {
    if (secondNumber == 0) {
        return @"Error";
    }
    CGFloat result = firstNumber / secondNumber;
    return [NSString stringWithFormat:@"%.2f", result];
}
 
NSString* remaind(CGFloat firstNumber, CGFloat secondNumber) {
    if (secondNumber == 0) {
        return @"Error";
    }
    NSInteger result = (NSInteger)firstNumber % (NSInteger)secondNumber;
    return [NSString stringWithFormat:@"%ld", (long)result];
}
 
void calculate() {
    CGFloat firstNumber;
    CGFloat secondNumber;
    
    printf("Enter two numbers: ");
    scanf("%lf %lf", &firstNumber, &secondNumber);
    
    NSLog(@"Sum: %.2f", sum(firstNumber, secondNumber));
    NSLog(@"Difference: %.2f", difference(firstNumber, secondNumber));
    NSLog(@"Multiplication: %.2f", multiplication(firstNumber, secondNumber));
    NSLog(@"Division: %@", division(firstNumber, secondNumber));
    NSLog(@"Remainder: %@", remaind(firstNumber, secondNumber));
}
 
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 1 =====================
        NSString *enteredSymbol = inputSymbol();
        NSLog(isAlphabetInclude(enteredSymbol) ? @"Yes" : @"No");
        
        // 2 =====================
        calculate();
        
    }
    return 0;
}


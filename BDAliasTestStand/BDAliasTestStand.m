#import <Foundation/Foundation.h>
#import "BDAlias.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	BDAlias *alias1 = [BDAlias aliasWithPath:[[NSFileManager defaultManager] stringWithFileSystemRepresentation:argv[0] length:strlen(argv[0])]];
	BDAlias *alias2 = [BDAlias aliasWithPath:[[NSFileManager defaultManager] stringWithFileSystemRepresentation:argv[0] length:strlen(argv[0])]];
	assert([alias1 isEqual:alias2]);
	
    [pool release];
	printf("success\n");
    return 0;
}

#include <assert.h>
#include <stdbool.h>

typedef enum Volume { INTELLIGIBLE, INAUDIBLE } Volume;

Volume speaking_volume(bool correct_room, bool correct_time) {
    if (correct_room && correct_time) {
        return INTELLIGIBLE;
    } else {
        // rehearsing
        return INAUDIBLE;
    }
}


int main() {
    assert( speaking_volume(true, true) == INTELLIGIBLE );

    return 0;
}

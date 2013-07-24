#include <memory>

using namespace std;

class Storable {
public:
    virtual ~Storable() {}
    virtual void write(const char* k, void* v) = 0;
};

class WORNStorage : public Storable {
public:
    virtual void write(const char* k, void* v) {
        // push bits to /dev/null
    }
};

class FakeStorage : public Storable {
    virtual void write(const char* k, void* v) {
        // do nothing!
    }
};

void someFunctionThatStores(Storable&) {
}

/*
class WORNStorage {
public:
    void write(const char* k, void* v) {}
};
*/

Storable* getStorableFromSomewhere() {
    return new WORNStorage();
}

int main() {
    auto_ptr<Storable> storage(getStorableFromSomewhere());
    int answer = 42;
    storage->write("answer", &answer);

    FakeStorage fake;
    someFunctionThatStores(fake);

    return 0;
}

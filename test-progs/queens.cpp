#include <iostream>
#include <vector>
#include <cmath>

using namespace std;

class Checkboard
{
private:
    typedef vector<vector<int> > Map;

protected:
    Map map;
    int size;

public:
    Checkboard(int _size) : map(_size, vector<int>(_size, 0)), size(_size) {}

    void set(int m, int n)
    {
        map[m][n] = 1;
    }

    void unset(int m, int n)
    {
        map[m][n] = 0;
    }

    int get(int m, int n)
    {
        return map[m][n];
    }

    int getSize()
    {
        return size;
    }

    int checkAlive(int m, int n)
    {
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                if (i == m && j == n)
                    continue;
                if (abs(i-m) == abs(j-n) || i == m || j == n) {
                    if (map[i][j]) {
                        return 0;
                    }
                }
            }
        }
        return 1;
    }

    void print() const
    {
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                if (map[i][j])
                    cout << "x ";
                else
                    cout << "o ";
            }
            cout << endl;
        }
        cout << endl;
    }
};

void generateResult(int current_line, Checkboard &board, vector<Checkboard> &result)
{
    for (int i = 0; i < board.getSize(); i++) {
        if (board.checkAlive(current_line, i)) {
            board.set(current_line, i);
            if (current_line == board.getSize() - 1) {
                result.push_back(board);
            } else {
                generateResult(current_line + 1, board, result);
            }
            board.unset(current_line, i);
        }
    }
}

void printResult(const vector<Checkboard> &result)
{
    cout << "Total number of results: " << result.size() << endl << endl;
    for (auto i = result.cbegin(); i != result.cend(); i++) {
        cout << "===============" << endl << endl;
        i->print();
    }
}

int main() {
    int size = 4;
    Checkboard board(size);
    vector<Checkboard> result(0, Checkboard(size));
    generateResult(0, board, result);
    printResult(result);
    return 0;
}
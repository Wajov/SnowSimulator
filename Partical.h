//
// Created by Wajov on 2019/5/3.
//

#ifndef SNOWSIMULATOR_PARTICAL_H
#define SNOWSIMULATOR_PARTICAL_H


class Partical {
private:
    float t0;
    glm::vec3 x, v, a;
    float randFloat(float left, float right);

public:
    Partical(float t, bool init);
    glm::vec3 getX();
    bool exist();
    void update(float t);
};


#endif //SNOWSIMULATOR_PARTICAL_H

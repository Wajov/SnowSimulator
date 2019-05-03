#include <bits/stdc++.h>

#include <GLAD/glad.h>
#include <GLFW/glfw3.h>
#include <GLM/glm.hpp>
#include <GLM/gtc/matrix_transform.hpp>
#include <GLM/gtc/type_ptr.hpp>

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#include "Partical.h"

const int WINDOW_WIDTH = 800, WINDOW_HEIGHT = 800, PARTICAL_NUM = 1000;
float vertices[] = {
        -0.01f, -0.01f, -0.01f,  0.0f, 0.0f,
        0.01f, -0.01f, -0.01f,  1.0f, 0.0f,
        0.01f,  0.01f, -0.01f,  1.0f, 1.0f,
        0.01f,  0.01f, -0.01f,  1.0f, 1.0f,
        -0.01f,  0.01f, -0.01f,  0.0f, 1.0f,
        -0.01f, -0.01f, -0.01f,  0.0f, 0.0f
};
const char *vertexShaderSource = "#version 330 core\n"
                                 "layout (location = 0) in vec3 aPos;\n"
                                 "layout (location = 1) in vec2 aTexCoord;\n"

                                 "out vec2 TexCoord;\n"

                                 "uniform mat4 model;\n"
                                 "uniform mat4 view;\n"
                                 "uniform mat4 proj;\n"

                                 "void main()\n"
                                 "{\n"
                                 "    gl_Position = proj * view * model * vec4(aPos, 1.0);\n"
                                 "    TexCoord = vec2(aTexCoord.x, aTexCoord.y);\n"
                                 "}\n\0";
const char *fragmentShaderSource = "#version 330 core\n"
                                   "out vec4 FragColor;\n"

                                   "in vec2 TexCoord;\n"

                                   "uniform sampler2D ourTexture;\n"

                                   "void main()\n"
                                   "{\n"
                                   "    FragColor = texture(ourTexture, TexCoord);\n"
                                   "}\n\0";

unsigned int VAO, VBO, program, texture;
int width, height, channelNum;
unsigned char *imageDate;
std::vector<Partical> particals, particalsTmp;

void framebufferSizeCallback(GLFWwindow *window, int width, int height) {
    glViewport(0, 0, width, height);
}

void init() {
    int success;

    unsigned int vertexShader = glCreateShader(GL_VERTEX_SHADER);
    glShaderSource(vertexShader, 1, &vertexShaderSource, NULL);
    glCompileShader(vertexShader);
    glGetShaderiv(vertexShader, GL_COMPILE_STATUS, &success);
    if (!success) {
        std::cout << "Failed to compile vertex shader source" << std::endl;
        exit(0);
    }

    unsigned int fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(fragmentShader, 1, &fragmentShaderSource, NULL);
    glCompileShader(fragmentShader);
    glGetShaderiv(fragmentShader, GL_COMPILE_STATUS, &success);
    if (!success) {
        std::cout << "Failed to compile fragment shader source" << std::endl;
        exit(0);
    }

    program = glCreateProgram();
    glAttachShader(program, vertexShader);
    glAttachShader(program, fragmentShader);
    glLinkProgram(program);
    glGetProgramiv(program, GL_LINK_STATUS, &success);
    if(!success) {
        std::cout << "Failed to link program" << std::endl;
        exit(0);
    }
    glDeleteShader(vertexShader);
    glDeleteShader(fragmentShader);

    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);

    glBindVertexArray(VAO);

    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void*) 0);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void*) (3 * sizeof(float)));
    glEnableVertexAttribArray(1);

    imageDate = stbi_load("E:\\Projects\\SnowSimulator\\snowflower.jpg", &width, &height, &channelNum, 0);
    glGenTextures(1, &texture);
    glBindTexture(GL_TEXTURE_2D, texture);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, imageDate);
    glGenerateMipmap(GL_TEXTURE_2D);

    glEnable(GL_DEPTH_TEST);

    for (unsigned int i = 0; i < PARTICAL_NUM; i++)
        particals.push_back(Partical(glfwGetTime(), true));
}

void render() {
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    glBindTexture(GL_TEXTURE_2D, texture);

    glUseProgram(program);

    glm::mat4 view = glm::mat4(1.0f);
    glm::mat4 proj = glm::mat4(1.0f);
    view = glm::translate(view, glm::vec3(0.0f, 0.0f, -3.0f));
    proj = glm::perspective(glm::radians(45.0f), (float) WINDOW_WIDTH / (float) WINDOW_HEIGHT, 0.1f, 100.0f);
    glUniformMatrix4fv(glGetUniformLocation(program, "view"), 1, GL_FALSE, glm::value_ptr(view));
    glUniformMatrix4fv(glGetUniformLocation(program, "proj"), 1, GL_FALSE, glm::value_ptr(proj));

    glBindVertexArray(VAO);

    particalsTmp.clear();
    for (unsigned int i = 0; i < particals.size(); i++) {
        glm::mat4 model = glm::mat4(1.0f);
        particals[i].update(glfwGetTime());
        model = glm::translate(model, particals[i].getX());
        glUniformMatrix4fv(glGetUniformLocation(program, "model"), 1, GL_FALSE, glm::value_ptr(model));
        if (particals[i].exist())
            particalsTmp.push_back(particals[i]);
        else
            particalsTmp.push_back(Partical(glfwGetTime(), false));

        glDrawArrays(GL_TRIANGLES, 0, 36);
    }

    particals = particalsTmp;
}

int main() {
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    GLFWwindow *window = glfwCreateWindow(WINDOW_WIDTH, WINDOW_HEIGHT, "SnowSimulator", NULL, NULL);
    if (window == NULL) {
        std::cout << "Failed to create GLFW window" << std::endl;
        return 0;
    }
    glfwMakeContextCurrent(window);
    glfwSetFramebufferSizeCallback(window, framebufferSizeCallback);

    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)) {
        std::cout << "Failed to initialize GLAD" << std::endl;
        return 0;
    }

    init();

    while (!glfwWindowShouldClose(window)) {
        render();

        glfwPollEvents();
        glfwSwapBuffers(window);
    }

    glDeleteVertexArrays(1, &VAO);
    glDeleteBuffers(1, &VBO);
    glfwTerminate();

    return 0;
}

struct UsingSpriteKitView: View {
    private var scene: SKScene {
        let scene = SnowScene()
        scene.scaleMode = .resizeFill
        scene.backgroundColor = .clear
        return scene
    }

    var body: some View {
        SpriteView(scene: scene, options: [.allowsTransparency])
            .ignoresSafeArea()
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(Color.black)
    }
}

final class SnowScene: SKScene {

    private let snowEmitterNode = SKEmitterNode(fileNamed: "snow.sks")

    override func didMove(to view: SKView) {
        guard let snowEmitterNode = snowEmitterNode else { return }
        snowEmitterNode.particleSize = CGSize(width: 50, height: 50)
        snowEmitterNode.particleLifetime = 2
        snowEmitterNode.particleLifetimeRange = 6
        addChild(snowEmitterNode)
    }

    override func didChangeSize(_ oldSize: CGSize) {
        guard let snowEmitterNode = snowEmitterNode else { return }
        snowEmitterNode.particlePosition = CGPoint(x: size.width / 2, y: size.height)
        snowEmitterNode.particlePositionRange = CGVector(dx: size.width, dy: size.height)
    }
}

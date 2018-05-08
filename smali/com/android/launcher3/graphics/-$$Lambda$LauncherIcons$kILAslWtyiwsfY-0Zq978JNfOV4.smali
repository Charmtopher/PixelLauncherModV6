.class public final synthetic Lcom/android/launcher3/graphics/-$$Lambda$LauncherIcons$kILAslWtyiwsfY-0Zq978JNfOV4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/launcher3/graphics/BitmapRenderer$Renderer;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/graphics/LauncherIcons;

.field private final synthetic f$1:Landroid/graphics/Bitmap;

.field private final synthetic f$2:Lcom/android/launcher3/ItemInfoWithIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/LauncherIcons;Landroid/graphics/Bitmap;Lcom/android/launcher3/ItemInfoWithIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/-$$Lambda$LauncherIcons$kILAslWtyiwsfY-0Zq978JNfOV4;->f$0:Lcom/android/launcher3/graphics/LauncherIcons;

    iput-object p2, p0, Lcom/android/launcher3/graphics/-$$Lambda$LauncherIcons$kILAslWtyiwsfY-0Zq978JNfOV4;->f$1:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/launcher3/graphics/-$$Lambda$LauncherIcons$kILAslWtyiwsfY-0Zq978JNfOV4;->f$2:Lcom/android/launcher3/ItemInfoWithIcon;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/graphics/-$$Lambda$LauncherIcons$kILAslWtyiwsfY-0Zq978JNfOV4;->f$0:Lcom/android/launcher3/graphics/LauncherIcons;

    iget-object v1, p0, Lcom/android/launcher3/graphics/-$$Lambda$LauncherIcons$kILAslWtyiwsfY-0Zq978JNfOV4;->f$1:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher3/graphics/-$$Lambda$LauncherIcons$kILAslWtyiwsfY-0Zq978JNfOV4;->f$2:Lcom/android/launcher3/ItemInfoWithIcon;

    invoke-static {v0, v1, v2, p1}, Lcom/android/launcher3/graphics/LauncherIcons;->lambda$createShortcutIcon$0(Lcom/android/launcher3/graphics/LauncherIcons;Landroid/graphics/Bitmap;Lcom/android/launcher3/ItemInfoWithIcon;Landroid/graphics/Canvas;)V

    return-void
.end method

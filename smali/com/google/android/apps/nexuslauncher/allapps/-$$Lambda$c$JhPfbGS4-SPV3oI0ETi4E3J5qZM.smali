.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/-$$Lambda$c$JhPfbGS4-SPV3oI0ETi4E3J5qZM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/launcher3/graphics/BitmapRenderer$Renderer;


# instance fields
.field private final synthetic f$0:Lcom/google/android/apps/nexuslauncher/allapps/c;

.field private final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/c;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/-$$Lambda$c$JhPfbGS4-SPV3oI0ETi4E3J5qZM;->f$0:Lcom/google/android/apps/nexuslauncher/allapps/c;

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/-$$Lambda$c$JhPfbGS4-SPV3oI0ETi4E3J5qZM;->f$1:F

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/-$$Lambda$c$JhPfbGS4-SPV3oI0ETi4E3J5qZM;->f$0:Lcom/google/android/apps/nexuslauncher/allapps/c;

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/-$$Lambda$c$JhPfbGS4-SPV3oI0ETi4E3J5qZM;->f$1:F

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/nexuslauncher/allapps/c;->lambda$createDragBitmap$0(Lcom/google/android/apps/nexuslauncher/allapps/c;FLandroid/graphics/Canvas;)V

    return-void
.end method

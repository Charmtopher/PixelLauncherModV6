.class public final synthetic Lcom/android/launcher3/graphics/-$$Lambda$DragPreviewProvider$mOiJTXeJnD_eeMi0HJ3nPr-nzk4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/launcher3/graphics/BitmapRenderer$Renderer;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/graphics/DragPreviewProvider;

.field private final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/DragPreviewProvider;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/-$$Lambda$DragPreviewProvider$mOiJTXeJnD_eeMi0HJ3nPr-nzk4;->f$0:Lcom/android/launcher3/graphics/DragPreviewProvider;

    iput p2, p0, Lcom/android/launcher3/graphics/-$$Lambda$DragPreviewProvider$mOiJTXeJnD_eeMi0HJ3nPr-nzk4;->f$1:F

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/graphics/-$$Lambda$DragPreviewProvider$mOiJTXeJnD_eeMi0HJ3nPr-nzk4;->f$0:Lcom/android/launcher3/graphics/DragPreviewProvider;

    iget v1, p0, Lcom/android/launcher3/graphics/-$$Lambda$DragPreviewProvider$mOiJTXeJnD_eeMi0HJ3nPr-nzk4;->f$1:F

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;->lambda$createDragBitmap$0(Lcom/android/launcher3/graphics/DragPreviewProvider;FLandroid/graphics/Canvas;)V

    return-void
.end method

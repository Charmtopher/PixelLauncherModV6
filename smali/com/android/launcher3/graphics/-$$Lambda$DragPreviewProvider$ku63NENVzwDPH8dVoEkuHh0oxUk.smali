.class public final synthetic Lcom/android/launcher3/graphics/-$$Lambda$DragPreviewProvider$ku63NENVzwDPH8dVoEkuHh0oxUk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/launcher3/graphics/BitmapRenderer$Renderer;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/graphics/DragPreviewProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/DragPreviewProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/-$$Lambda$DragPreviewProvider$ku63NENVzwDPH8dVoEkuHh0oxUk;->f$0:Lcom/android/launcher3/graphics/DragPreviewProvider;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/graphics/-$$Lambda$DragPreviewProvider$ku63NENVzwDPH8dVoEkuHh0oxUk;->f$0:Lcom/android/launcher3/graphics/DragPreviewProvider;

    invoke-static {v0, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;->lambda$createDragBitmap$1(Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Canvas;)V

    return-void
.end method

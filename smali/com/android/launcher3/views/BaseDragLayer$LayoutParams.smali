.class public Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
.super Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
.source "SourceFile"


# instance fields
.field public customPosition:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 271
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(II)V

    .line 264
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    .line 272
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 267
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 264
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 275
    invoke-direct {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    .line 276
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 291
    iget v0, p0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 283
    iget v0, p0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .line 299
    iget v0, p0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 307
    iget v0, p0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .line 287
    iput p1, p0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    .line 288
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 279
    iput p1, p0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    .line 280
    return-void
.end method

.method public setX(I)V
    .locals 0

    .line 295
    iput p1, p0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    .line 296
    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 303
    iput p1, p0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    .line 304
    return-void
.end method

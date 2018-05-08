.class public abstract Lcom/android/launcher3/ItemInfoWithIcon;
.super Lcom/android/launcher3/ItemInfo;
.source "SourceFile"


# instance fields
.field public iconBitmap:Landroid/graphics/Bitmap;

.field public iconColor:I

.field public runtimeStatusFlags:I

.field public usingLowResIcon:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/ItemInfoWithIcon;->runtimeStatusFlags:I

    .line 104
    return-void
.end method

.method protected constructor <init>(Lcom/android/launcher3/ItemInfoWithIcon;)V
    .locals 1

    .line 107
    invoke-direct {p0, p1}, Lcom/android/launcher3/ItemInfo;-><init>(Lcom/android/launcher3/ItemInfo;)V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/ItemInfoWithIcon;->runtimeStatusFlags:I

    .line 108
    iget-object v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/launcher3/ItemInfoWithIcon;->iconBitmap:Landroid/graphics/Bitmap;

    .line 109
    iget v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->iconColor:I

    iput v0, p0, Lcom/android/launcher3/ItemInfoWithIcon;->iconColor:I

    .line 110
    iget-boolean v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->usingLowResIcon:Z

    iput-boolean v0, p0, Lcom/android/launcher3/ItemInfoWithIcon;->usingLowResIcon:Z

    .line 111
    iget p1, p1, Lcom/android/launcher3/ItemInfoWithIcon;->runtimeStatusFlags:I

    iput p1, p0, Lcom/android/launcher3/ItemInfoWithIcon;->runtimeStatusFlags:I

    .line 112
    return-void
.end method


# virtual methods
.method public isDisabled()Z
    .locals 1

    .line 116
    iget v0, p0, Lcom/android/launcher3/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit8 v0, v0, 0x3f

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MODE_CLOSING:I = 0x1

.field public static final MODE_OPENING:I


# instance fields
.field public final clipRect:Landroid/graphics/Rect;

.field public final isNotInRecents:Z

.field public final isTranslucent:Z

.field public final leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

.field private final mTarget:Landroid/view/RemoteAnimationTarget;

.field public final mode:I

.field public final position:Landroid/graphics/Point;

.field public final prefixOrderIndex:I

.field public final sourceContainerBounds:Landroid/graphics/Rect;

.field public final taskId:I


# direct methods
.method public constructor <init>(Landroid/view/RemoteAnimationTarget;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 47
    iget v0, p1, Landroid/view/RemoteAnimationTarget;->taskId:I

    iput v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    .line 48
    iget v0, p1, Landroid/view/RemoteAnimationTarget;->mode:I

    iput v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    .line 49
    new-instance v0, Lcom/android/systemui/shared/system/SurfaceControlCompat;

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/system/SurfaceControlCompat;-><init>(Landroid/view/SurfaceControl;)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    .line 50
    iget-boolean v0, p1, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    .line 51
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->clipRect:Landroid/graphics/Rect;

    .line 52
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    .line 53
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 54
    iget v0, p1, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    iput v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->prefixOrderIndex:I

    .line 55
    iget-boolean p1, p1, Landroid/view/RemoteAnimationTarget;->isNotInRecents:Z

    iput-boolean p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isNotInRecents:Z

    .line 56
    return-void
.end method

.method public static wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .locals 4

    .line 59
    array-length v0, p0

    new-array v0, v0, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 61
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 62
    new-instance v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;-><init>(Landroid/view/RemoteAnimationTarget;)V

    aput-object v2, v0, v1

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getContentInsets()Landroid/graphics/Rect;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isAssistantActivityType()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

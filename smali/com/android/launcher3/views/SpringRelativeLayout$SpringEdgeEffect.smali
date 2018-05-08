.class Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "SourceFile"


# instance fields
.field private mDistance:F

.field private final mVelocityMultiplier:F

.field final synthetic this$0:Lcom/android/launcher3/views/SpringRelativeLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/SpringRelativeLayout;Landroid/content/Context;F)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/android/launcher3/views/SpringRelativeLayout;

    .line 131
    invoke-direct {p0, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 132
    iput p3, p0, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffect;->mVelocityMultiplier:F

    .line 133
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 0

    .line 137
    const/4 p1, 0x0

    return p1
.end method

.method public onAbsorb(I)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/android/launcher3/views/SpringRelativeLayout;

    int-to-float p1, p1

    iget v1, p0, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffect;->mVelocityMultiplier:F

    mul-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/android/launcher3/views/SpringRelativeLayout;->access$300(Lcom/android/launcher3/views/SpringRelativeLayout;F)V

    .line 143
    return-void
.end method

.method public onPull(FF)V
    .locals 2

    .line 147
    iget p2, p0, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffect;->mDistance:F

    iget v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffect;->mVelocityMultiplier:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    mul-float/2addr p1, v0

    add-float/2addr p2, p1

    iput p2, p0, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffect;->mDistance:F

    .line 148
    iget-object p1, p0, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/android/launcher3/views/SpringRelativeLayout;

    iget p2, p0, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffect;->mDistance:F

    iget-object v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/android/launcher3/views/SpringRelativeLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/views/SpringRelativeLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    invoke-static {p1, p2}, Lcom/android/launcher3/views/SpringRelativeLayout;->access$100(Lcom/android/launcher3/views/SpringRelativeLayout;F)V

    .line 149
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffect;->mDistance:F

    .line 154
    iget-object v1, p0, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/android/launcher3/views/SpringRelativeLayout;

    invoke-static {v1, v0}, Lcom/android/launcher3/views/SpringRelativeLayout;->access$300(Lcom/android/launcher3/views/SpringRelativeLayout;F)V

    .line 155
    return-void
.end method

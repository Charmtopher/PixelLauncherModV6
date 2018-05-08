.class Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffectFactory;
.super Landroid/support/v7/widget/Z;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/views/SpringRelativeLayout;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/views/SpringRelativeLayout;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffectFactory;->this$0:Lcom/android/launcher3/views/SpringRelativeLayout;

    invoke-direct {p0}, Landroid/support/v7/widget/Z;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/views/SpringRelativeLayout;B)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffectFactory;-><init>(Lcom/android/launcher3/views/SpringRelativeLayout;)V

    return-void
.end method


# virtual methods
.method protected final createEdgeEffect(Landroid/support/v7/widget/RecyclerView;I)Landroid/widget/EdgeEffect;
    .locals 2

    .line 114
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 120
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/Z;->createEdgeEffect(Landroid/support/v7/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object p1

    return-object p1

    .line 118
    :cond_0
    new-instance p1, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffect;

    iget-object p2, p0, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffectFactory;->this$0:Lcom/android/launcher3/views/SpringRelativeLayout;

    iget-object v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffectFactory;->this$0:Lcom/android/launcher3/views/SpringRelativeLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/views/SpringRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, -0x41666666    # -0.3f

    invoke-direct {p1, p2, v0, v1}, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffect;-><init>(Lcom/android/launcher3/views/SpringRelativeLayout;Landroid/content/Context;F)V

    return-object p1

    .line 116
    :cond_1
    new-instance p1, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffect;

    iget-object p2, p0, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffectFactory;->this$0:Lcom/android/launcher3/views/SpringRelativeLayout;

    iget-object v0, p0, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffectFactory;->this$0:Lcom/android/launcher3/views/SpringRelativeLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/views/SpringRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {p1, p2, v0, v1}, Lcom/android/launcher3/views/SpringRelativeLayout$SpringEdgeEffect;-><init>(Lcom/android/launcher3/views/SpringRelativeLayout;Landroid/content/Context;F)V

    return-object p1
.end method

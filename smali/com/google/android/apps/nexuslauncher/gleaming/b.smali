.class Lcom/google/android/apps/nexuslauncher/gleaming/b;
.super Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/quickstep/RecentsModel$AssistDataListener;
.implements Lcom/google/android/apps/miphone/aiai/matchmaker/ui/k;
.implements Lcom/google/android/apps/miphone/aiai/matchmaker/ui/r;


# instance fields
.field private final mRecentsModel:Lcom/android/quickstep/RecentsModel;

.field private mTaskId:I

.field private mTouchState:I

.field private final zc:Landroid/view/View;

.field private final zd:Landroid/graphics/PointF;

.field private ze:I

.field private zf:I

.field private zg:I

.field private zh:I

.field private zi:I

.field private zj:Lcom/google/android/apps/nexuslauncher/gleaming/a;

.field private zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

.field private zl:Landroid/view/ActionMode;

.field private zm:Z

.field private zn:Landroid/os/Bundle;

.field private zo:Landroid/widget/PopupWindow;

.field private zp:J

.field private final zq:Ljava/lang/Runnable;

.field final synthetic zr:Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;Landroid/view/View;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zr:Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;

    invoke-direct {p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;-><init>()V

    .line 119
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zd:Landroid/graphics/PointF;

    .line 120
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->ze:I

    .line 121
    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zf:I

    .line 122
    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zg:I

    .line 123
    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zh:I

    .line 124
    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zi:I

    .line 132
    iget p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->ze:I

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->mTouchState:I

    .line 134
    new-instance p1, Lcom/google/android/apps/nexuslauncher/gleaming/-$$Lambda$b$4a6aWt0fVafSNkSgY-wdLZ7ejnA;

    invoke-direct {p1, p0}, Lcom/google/android/apps/nexuslauncher/gleaming/-$$Lambda$b$4a6aWt0fVafSNkSgY-wdLZ7ejnA;-><init>(Lcom/google/android/apps/nexuslauncher/gleaming/b;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zq:Ljava/lang/Runnable;

    .line 137
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zc:Landroid/view/View;

    .line 138
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zc:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 140
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/quickstep/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/android/quickstep/RecentsModel;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->mRecentsModel:Lcom/android/quickstep/RecentsModel;

    .line 141
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;Landroid/view/View;B)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/gleaming/b;-><init>(Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/gleaming/b;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zl:Landroid/view/ActionMode;

    return-object p1
.end method

.method private b(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;)V
    .locals 1

    .line 369
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/gleaming/b;->reset()V

    .line 371
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    .line 372
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    iget-object p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget-object p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uA:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;

    iput-object p0, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/r;

    .line 373
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    iget-object v0, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wk:Lcom/google/android/apps/miphone/aiai/matchmaker/api/SettingsData;

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/SettingsData;->rY:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;

    iget-boolean v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;->sX:Z

    if-eqz v0, :cond_0

    iput-object p0, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uQ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/k;

    .line 377
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->setLayoutDirection(I)V

    .line 379
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zc:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 380
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/gleaming/b;->dg()V

    .line 381
    return-void
.end method

.method private dd()V
    .locals 5

    .line 239
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    if-nez v0, :cond_0

    .line 240
    return-void

    .line 242
    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->mTouchState:I

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zf:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 243
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zc:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zc:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zd:Landroid/graphics/PointF;

    .line 245
    invoke-virtual {v1, v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->a(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->b(Landroid/graphics/PointF;)V

    .line 247
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zg:I

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->mTouchState:I

    .line 249
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zp:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v0, v3

    .line 251
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    .line 252
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zc:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zq:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    return-void

    .line 257
    :cond_2
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->mTouchState:I

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zg:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 259
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 260
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    invoke-virtual {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->cx()V

    .line 261
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 262
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zh:I

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->mTouchState:I

    .line 264
    :cond_3
    return-void
.end method

.method private df()Landroid/os/Bundle;
    .locals 2

    .line 362
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/gleaming/b;->de()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    const/4 v0, 0x0

    return-object v0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->mRecentsModel:Lcom/android/quickstep/RecentsModel;

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->mTaskId:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsModel;->getAssistData(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private dg()V
    .locals 3

    .line 384
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/gleaming/b;->df()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zn:Landroid/os/Bundle;

    .line 385
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zn:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/gleaming/b;->df()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->wk:Lcom/google/android/apps/miphone/aiai/matchmaker/api/SettingsData;

    iget-object v2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/SettingsData;->rY:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;

    iget-boolean v2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;->sY:Z

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    iput-object v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vG:Landroid/os/Bundle;

    const-string v0, "Received assist structure"

    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->d(Ljava/lang/String;)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    .line 388
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/gleaming/-$$Lambda$TucvcMtBrxmXf71pjIpjjHrOj8I;

    invoke-direct {v2, v0}, Lcom/google/android/apps/nexuslauncher/gleaming/-$$Lambda$TucvcMtBrxmXf71pjIpjjHrOj8I;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->post(Ljava/lang/Runnable;)Z

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zn:Landroid/os/Bundle;

    .line 391
    :cond_1
    return-void
.end method

.method private dh()V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zo:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zo:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zo:Landroid/widget/PopupWindow;

    .line 398
    :cond_0
    return-void
.end method

.method private synthetic di()V
    .locals 1

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zo:Landroid/widget/PopupWindow;

    return-void
.end method

.method public static synthetic lambda$4a6aWt0fVafSNkSgY-wdLZ7ejnA(Lcom/google/android/apps/nexuslauncher/gleaming/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/gleaming/b;->dd()V

    return-void
.end method

.method public static synthetic lambda$C_ZNAGsGEUKxCCPOhZpim2MTIVU(Lcom/google/android/apps/nexuslauncher/gleaming/b;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/gleaming/b;->b(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;)V

    return-void
.end method

.method public static synthetic lambda$eLZPR8ZBJA8izvGIbb2FQ_d7Wjo(Lcom/google/android/apps/nexuslauncher/gleaming/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/gleaming/b;->di()V

    return-void
.end method

.method public static synthetic lambda$vnFr8MPMkBRKYQwoM761SGoGm6w(Lcom/google/android/apps/nexuslauncher/gleaming/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/gleaming/b;->dh()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ActionMode;)V
    .locals 1

    .line 235
    sget-object v0, Lcom/android/launcher3/Launcher;->AUTO_CANCEL_ACTION_MODE:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTag(Ljava/lang/Object;)V

    .line 236
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zo:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/gleaming/b;->dh()V

    .line 192
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zr:Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->b(Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 197
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zo:Landroid/widget/PopupWindow;

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zo:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zr:Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->b(Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ca

    .line 200
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 201
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zo:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v1, p1, p2, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 202
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zo:Landroid/widget/PopupWindow;

    new-instance p2, Lcom/google/android/apps/nexuslauncher/gleaming/-$$Lambda$b$eLZPR8ZBJA8izvGIbb2FQ_d7Wjo;

    invoke-direct {p2, p0}, Lcom/google/android/apps/nexuslauncher/gleaming/-$$Lambda$b$eLZPR8ZBJA8izvGIbb2FQ_d7Wjo;-><init>(Lcom/google/android/apps/nexuslauncher/gleaming/b;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 203
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zr:Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->c(Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/google/android/apps/nexuslauncher/gleaming/-$$Lambda$b$vnFr8MPMkBRKYQwoM761SGoGm6w;

    invoke-direct {p2, p0}, Lcom/google/android/apps/nexuslauncher/gleaming/-$$Lambda$b$vnFr8MPMkBRKYQwoM761SGoGm6w;-><init>(Lcom/google/android/apps/nexuslauncher/gleaming/b;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    return-void
.end method

.method public final a(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/s;)V
    .locals 3

    .line 215
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/gleaming/b;->hide()V

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 219
    new-instance v1, Lcom/google/android/apps/nexuslauncher/gleaming/c;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zr:Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;

    invoke-direct {v1, v2, p1, p0}, Lcom/google/android/apps/nexuslauncher/gleaming/c;-><init>(Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/s;Lcom/google/android/apps/nexuslauncher/gleaming/b;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zl:Landroid/view/ActionMode;

    .line 222
    :cond_0
    return-void
.end method

.method public final de()Z
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zr:Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->a(Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zr:Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->a(Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;->ve:Lcom/google/android/apps/miphone/aiai/matchmaker/api/SettingsData;

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/SettingsData;->rY:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;

    iget-boolean v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/v;->sY:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hide()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zl:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zl:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zl:Landroid/view/ActionMode;

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/gleaming/b;->dh()V

    .line 231
    return-void
.end method

.method public onAssistDataReceived(I)V
    .locals 1

    .line 356
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->mTaskId:I

    if-ne p1, v0, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/gleaming/b;->dg()V

    .line 359
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 268
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/gleaming/b;->dh()V

    .line 269
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 270
    return v1

    .line 272
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 274
    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 275
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zc:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zq:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 276
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zc:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/BaseDraggingActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseDraggingActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/views/RecentsView;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zc:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getCurrentPage()I

    move-result v5

    invoke-virtual {v3, v4}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-ne v5, v3, :cond_1

    move v1, v2

    nop

    :cond_1
    if-eqz v1, :cond_2

    .line 277
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zd:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zc:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 278
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zc:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 277
    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zp:J

    .line 281
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zf:I

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->mTouchState:I

    .line 282
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zc:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zq:Ljava/lang/Runnable;

    .line 283
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    .line 282
    invoke-virtual {v1, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 285
    :cond_2
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->ze:I

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->mTouchState:I

    .line 289
    :cond_3
    :goto_0
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->mTouchState:I

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zh:I

    const/4 v4, 0x3

    if-ne v1, v3, :cond_4

    .line 291
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 292
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 293
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 294
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zi:I

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->mTouchState:I

    .line 297
    :cond_4
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->mTouchState:I

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zi:I

    if-eq v1, v3, :cond_5

    .line 299
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 302
    :cond_5
    if-eq v0, v2, :cond_6

    if-ne v0, v4, :cond_8

    .line 303
    :cond_6
    iget p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->mTouchState:I

    iget p2, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zg:I

    if-ne p1, p2, :cond_7

    .line 306
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    invoke-virtual {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->cy()V

    .line 308
    :cond_7
    iget p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->ze:I

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->mTouchState:I

    .line 309
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zc:Landroid/view/View;

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zq:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 313
    :cond_8
    return v2
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 339
    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zm:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/gleaming/b;->de()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 340
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->mRecentsModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/RecentsModel;->addAssistDataListener(Lcom/android/quickstep/RecentsModel$AssistDataListener;)V

    .line 341
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zm:Z

    .line 343
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 347
    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zm:Z

    if-eqz p1, :cond_0

    .line 348
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->mRecentsModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/RecentsModel;->removeAssistDataListener(Lcom/android/quickstep/RecentsModel$AssistDataListener;)V

    .line 349
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zm:Z

    .line 351
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/gleaming/b;->dh()V

    .line 352
    return-void
.end method

.method public reset()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 175
    if-eqz v0, :cond_0

    .line 176
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 179
    :cond_0
    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zk:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zj:Lcom/google/android/apps/nexuslauncher/gleaming/a;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zj:Lcom/google/android/apps/nexuslauncher/gleaming/a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/apps/nexuslauncher/gleaming/a;->mCancelled:Z

    .line 183
    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zj:Lcom/google/android/apps/nexuslauncher/gleaming/a;

    .line 185
    :cond_2
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/gleaming/b;->dh()V

    .line 186
    return-void
.end method

.method public setTaskInfo(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Landroid/graphics/Matrix;)V
    .locals 10

    .line 145
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/gleaming/b;->reset()V

    .line 146
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zr:Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->a(Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->mTaskId:I

    .line 152
    iget p1, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->scale:F

    .line 153
    new-instance v2, Landroid/graphics/RectF;

    iget-object v0, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget-object v1, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget-object p1, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v3, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 157
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v0, v1, p1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 159
    new-instance p1, Lcom/google/android/apps/nexuslauncher/gleaming/a;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/gleaming/-$$Lambda$b$C_ZNAGsGEUKxCCPOhZpim2MTIVU;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/gleaming/-$$Lambda$b$C_ZNAGsGEUKxCCPOhZpim2MTIVU;-><init>(Lcom/google/android/apps/nexuslauncher/gleaming/b;)V

    invoke-direct {p1, v0}, Lcom/google/android/apps/nexuslauncher/gleaming/a;-><init>(Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zj:Lcom/google/android/apps/nexuslauncher/gleaming/a;

    .line 161
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zr:Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->a(Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zr:Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;

    .line 163
    invoke-static {v0, p3}, Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;->a(Lcom/google/android/apps/nexuslauncher/gleaming/TaskOverlayFactoryImpl;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 166
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/gleaming/b;->df()Landroid/os/Bundle;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    const-string p2, ""

    const-string p3, ""

    invoke-direct {v8, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/google/android/apps/nexuslauncher/gleaming/b;->zj:Lcom/google/android/apps/nexuslauncher/gleaming/a;

    .line 161
    invoke-virtual {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;->cv()Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;

    new-instance p2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/u;

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/u;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;Landroid/graphics/RectF;Landroid/graphics/PointF;JLandroid/graphics/Bitmap;Landroid/os/Bundle;Landroid/content/ComponentName;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/z;)V

    invoke-virtual {p1, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/t;->e(Ljava/lang/Runnable;)V

    .line 169
    return-void

    .line 147
    :cond_1
    :goto_0
    return-void
.end method

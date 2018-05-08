.class public Lcom/android/launcher3/shortcuts/DeepShortcutView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final sTempPoint:Landroid/graphics/Point;


# instance fields
.field public mBubbleText:Lcom/android/launcher3/BubbleTextView;

.field public mDetail:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

.field private mDivider:Landroid/view/View;

.field public mIconView:Landroid/view/View;

.field public mInfo:Lcom/android/launcher3/ShortcutInfo;

.field private final mPillRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->sTempPoint:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mPillRect:Landroid/graphics/Rect;

    .line 64
    return-void
.end method


# virtual methods
.method public final getFinalInfo()Lcom/android/launcher3/ShortcutInfo;
    .locals 3

    .line 133
    new-instance v0, Lcom/android/launcher3/ShortcutInfo;

    iget-object v1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mInfo:Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v0, v1}, Lcom/android/launcher3/ShortcutInfo;-><init>(Lcom/android/launcher3/ShortcutInfo;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    iget-object v2, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mDetail:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 137
    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/LauncherModel;->updateAndBindShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)V

    .line 138
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 68
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 69
    const v0, 0x7f0e0045

    invoke-virtual {p0, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    .line 70
    const v0, 0x7f0e0035

    invoke-virtual {p0, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    .line 71
    const v0, 0x7f0e0046

    invoke-virtual {p0, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mDivider:Landroid/view/View;

    .line 72
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 103
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 104
    iget-object p1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mPillRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 105
    return-void
.end method

.method public final setDividerVisibility(I)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mDivider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    return-void
.end method

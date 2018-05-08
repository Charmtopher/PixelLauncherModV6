.class public Lcom/android/launcher3/WorkspaceStateTransitionAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mLauncher:Lcom/android/launcher3/Launcher;

.field mNewScale:F

.field private final mWorkspace:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 47
    iput-object p2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 48
    return-void
.end method


# virtual methods
.method final applyChildState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/CellLayout;ILcom/android/launcher3/LauncherState$PageAlphaProvider;Lcom/android/launcher3/anim/PropertySetter;)V
    .locals 3

    .line 111
    invoke-virtual {p4, p3}, Lcom/android/launcher3/LauncherState$PageAlphaProvider;->getPageAlpha(I)F

    move-result p3

    .line 112
    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->hasWorkspacePageBackground:Z

    if-eqz p1, :cond_0

    const/16 p1, 0xff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    int-to-float p1, p1

    mul-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 114
    iget-object v0, p2, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->DRAWABLE_ALPHA:Landroid/util/Property;

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->ZOOM_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p5, v0, v1, p1, v2}, Lcom/android/launcher3/anim/PropertySetter;->setInt(Ljava/lang/Object;Landroid/util/Property;ILandroid/animation/TimeInterpolator;)V

    .line 116
    iget-object p1, p2, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-object p4, p4, Lcom/android/launcher3/LauncherState$PageAlphaProvider;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 118
    return-void
.end method

.method final setWorkspaceProperty(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)V
    .locals 10

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)[F

    move-result-object v0

    .line 68
    const/4 v1, 0x0

    aget v2, v0, v1

    iput v2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    .line 69
    iget-object v2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/LauncherState;->getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;

    move-result-object v2

    .line 70
    iget-object v3, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v9

    .line 71
    :goto_0
    if-ge v1, v9, :cond_0

    .line 72
    iget-object v3, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/launcher3/CellLayout;

    move-object v3, p0

    move-object v4, p1

    move v6, v1

    move-object v7, v2

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->applyChildState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/CellLayout;ILcom/android/launcher3/LauncherState$PageAlphaProvider;Lcom/android/launcher3/anim/PropertySetter;)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/Property;

    iget v4, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->ZOOM_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v1, v3, v4, v5}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 77
    iget-object v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v4, 0x1

    aget v4, v0, v4

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->ZOOM_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v1, v3, v4, v5}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 79
    iget-object v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    aget v0, v0, v4

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->ZOOM_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v1, v3, v0, v4}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getVisibleElements(Lcom/android/launcher3/Launcher;)I

    move-result v0

    .line 83
    and-int/lit8 v1, v0, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    .line 84
    move v1, v4

    goto :goto_1

    .line 83
    :cond_1
    nop

    .line 84
    move v1, v3

    :goto_1
    iget-object v5, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, v5, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v5, v5, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    iget-object v6, v2, Lcom/android/launcher3/LauncherState$PageAlphaProvider;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v5, v1, v6}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 86
    iget-object v5, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, v5, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->getPageIndicator()Landroid/view/View;

    move-result-object v5

    iget-object v6, v2, Lcom/android/launcher3/LauncherState$PageAlphaProvider;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v5, v1, v6}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 89
    iget-object v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mHotseatSearchBox:Landroid/view/View;

    .line 90
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    iget-object v6, v2, Lcom/android/launcher3/LauncherState$PageAlphaProvider;->interpolator:Landroid/view/animation/Interpolator;

    .line 89
    invoke-virtual {p2, v1, v5, v6}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 93
    iget-object v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mDragHandleIndicator:Landroid/view/View;

    .line 94
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    iget-object v2, v2, Lcom/android/launcher3/LauncherState$PageAlphaProvider;->interpolator:Landroid/view/animation/Interpolator;

    .line 93
    invoke-virtual {p2, v1, v0, v2}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/graphics/ViewScrim;->get(Landroid/view/View;)Lcom/android/launcher3/graphics/ViewScrim;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/graphics/ViewScrim;->PROGRESS:Landroid/util/Property;

    .line 99
    iget-boolean v2, p1, Lcom/android/launcher3/LauncherState;->hasScrim:Z

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 98
    invoke-virtual {p2, v0, v1, v2, v5}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-static {v0}, Lcom/android/launcher3/graphics/ViewScrim;->get(Landroid/view/View;)Lcom/android/launcher3/graphics/ViewScrim;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/graphics/ViewScrim;->PROGRESS:Landroid/util/Property;

    .line 101
    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->hasAllAppsScrim:Z

    if-eqz p1, :cond_5

    move v3, v4

    nop

    :cond_5
    sget-object p1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 100
    invoke-virtual {p2, v0, v1, v3, p1}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 102
    return-void
.end method
